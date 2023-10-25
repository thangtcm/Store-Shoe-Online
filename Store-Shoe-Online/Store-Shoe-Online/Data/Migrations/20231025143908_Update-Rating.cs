using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Store_Shoe_Online.Data.Migrations
{
    public partial class UpdateRating : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "e51d3c38-74ad-426b-b045-d769eb063a17", "8722be98-3f9d-49a6-b9d6-325c45b22947" });

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "e51d3c38-74ad-426b-b045-d769eb063a17");

            migrationBuilder.AddColumn<bool>(
                name: "IsFavorite",
                table: "FavoriteProduct",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "a012be79-ee02-4a49-bdc5-bdebef712797", null, "Administrator", "Administrator" });

            migrationBuilder.InsertData(
                table: "AspNetUserRoles",
                columns: new[] { "RoleId", "UserId" },
                values: new object[] { "a012be79-ee02-4a49-bdc5-bdebef712797", "8722be98-3f9d-49a6-b9d6-325c45b22947" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "a012be79-ee02-4a49-bdc5-bdebef712797", "8722be98-3f9d-49a6-b9d6-325c45b22947" });

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "a012be79-ee02-4a49-bdc5-bdebef712797");

            migrationBuilder.DropColumn(
                name: "IsFavorite",
                table: "FavoriteProduct");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "e51d3c38-74ad-426b-b045-d769eb063a17", null, "Administrator", "Administrator" });

            migrationBuilder.InsertData(
                table: "AspNetUserRoles",
                columns: new[] { "RoleId", "UserId" },
                values: new object[] { "e51d3c38-74ad-426b-b045-d769eb063a17", "8722be98-3f9d-49a6-b9d6-325c45b22947" });
        }
    }
}
