using Microsoft.EntityFrameworkCore.Migrations;

namespace LoanManagementService.Migrations
{
    public partial class loaninitial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Loans",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LoanNumber = table.Column<int>(nullable: false),
                    LoanAmount = table.Column<decimal>(nullable: false),
                    LoanTerm = table.Column<int>(nullable: false),
                    LoanType = table.Column<string>(nullable: true),
                    LoanStatus = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Loans", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BorrowerInformations",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false),
                    BorrowerName = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BorrowerInformations", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BorrowerInformations_Loans_Id",
                        column: x => x.Id,
                        principalTable: "Loans",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "LegalDocument",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false),
                    Documents = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LegalDocument", x => x.Id);
                    table.ForeignKey(
                        name: "FK_LegalDocument_Loans_Id",
                        column: x => x.Id,
                        principalTable: "Loans",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "PropertyInfomations",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false),
                    AddressLine1 = table.Column<string>(nullable: true),
                    AddressLine2 = table.Column<string>(nullable: true),
                    City = table.Column<string>(nullable: true),
                    ZipCode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertyInfomations", x => x.Id);
                    table.ForeignKey(
                        name: "FK_PropertyInfomations_Loans_Id",
                        column: x => x.Id,
                        principalTable: "Loans",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BorrowerInformations");

            migrationBuilder.DropTable(
                name: "LegalDocument");

            migrationBuilder.DropTable(
                name: "PropertyInfomations");

            migrationBuilder.DropTable(
                name: "Loans");
        }
    }
}
