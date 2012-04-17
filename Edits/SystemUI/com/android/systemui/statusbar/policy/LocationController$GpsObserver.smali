.class Lcom/android/systemui/statusbar/policy/LocationController$GpsObserver;
.super Landroid/database/ContentObserver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationController;->access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/LocationController;->mGpsActivated:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->access$002(Lcom/android/systemui/statusbar/policy/LocationController;Z)Z

    const-string v0, "STATUSBAR-LocationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() - mGpsActivated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mGpsActivated:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/LocationController;->access$000(Lcom/android/systemui/statusbar/policy/LocationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$200(Lcom/android/systemui/statusbar/policy/LocationController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$GpsObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mGpsActivated:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$000(Lcom/android/systemui/statusbar/policy/LocationController;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    :goto_42
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_46
    const/4 v0, 0x2

    goto :goto_42
.end method
