.class Lcom/android/settings/SettingsLicenseActivity$2;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$2;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dlgi"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$2;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 199
    return-void
.end method
