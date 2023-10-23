using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Store_Shoe_Online.Helpers;
using Store_Shoe_Online.Models;

namespace Store_Shoe_Online.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser, IdentityRole, string>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public readonly string AdminRoleId = Guid.NewGuid().ToString();
        public readonly string UserAdminId = "8722be98-3f9d-49a6-b9d6-325c45b22947";
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            SeedRoles(builder);
            SeedUser(builder);
            SeedUserRole(builder);
            builder.ApplyConfiguration(new ApplicationUserEntityConfiguration());
        }
        public DbSet<Category>? Category { get; set; }
        public DbSet<Product>? Product { get; set; }
        public DbSet<Order>? Order { get; set; }
        public DbSet<OrderDetail>? OrderDetail { get; set; }
        public DbSet<ProductDetail>? ProductDetails { get; set; }
        private void SeedRoles(ModelBuilder builder)
        {
            builder.Entity<IdentityRole>().HasData
            (
                new IdentityRole() { Id = AdminRoleId, Name = Constants.Roles.Admin, NormalizedName = Constants.Roles.Admin, ConcurrencyStamp = null }
            );
        }
        public class ApplicationUserEntityConfiguration : IEntityTypeConfiguration<ApplicationUser>
        {
            public void Configure(EntityTypeBuilder<ApplicationUser> builder)
            {
                builder.Property(u => u.FullName).HasMaxLength(100);
            }

        }
        private void SeedUserRole(ModelBuilder builder)
        {
            builder.Entity<IdentityUserRole<string>>().HasData(
                new IdentityUserRole<string>
                {
                    UserId = UserAdminId,
                    RoleId = AdminRoleId //     
                }
            );
        }

        private void SeedUser(ModelBuilder builder)
        {
            builder.Entity<ApplicationUser>().HasData(
                new ApplicationUser
                {
                    Id = UserAdminId,
                    UserName = "admin",
                    NormalizedUserName = "admin",
                    Email = "admin@shoe.vn",
                    NormalizedEmail = "admin@shoe.vn",
                    EmailConfirmed = true,
                    PasswordHash = "AQAAAAEAACcQAAAAECAsUeOByw0jsD4x7X0K9WQdxWV/RrvPBnHITnRzdbrhHKzmf35BZDPXJBcVjp5FIQ==", //Admin@123
                    SecurityStamp = "ZD5UZJQK6Q5W6N7O6RBRF6DB2Q2G2AIJ",
                    ConcurrencyStamp = "b19f1b24-5ac9-4c8d-9b7c-5e5d5f5cfb1e",
                    FullName = "Trần Cao Minh Thắng",
                    TwoFactorEnabled = false,
                    LockoutEnabled = true,
                    AccessFailedCount = 0
                }
            );
        }
    }
}