.class Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .registers 2
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/AccessibilitySettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 905
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 906
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 907
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 7
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 912
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 913
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 7
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 917
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 918
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 919
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 7
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 923
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 924
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 925
    return-void
.end method
