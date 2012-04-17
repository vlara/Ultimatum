.class Lcom/android/wanam/systemui/StBar/AutoRotateButton$1;
.super Ljava/lang/Object;
.source "AutoRotateButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wanam/systemui/StBar/AutoRotateButton;->setAutoRotation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/AutoRotateButton;

.field final synthetic val$autorotate:Z


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/AutoRotateButton;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton$1;->this$0:Lcom/android/wanam/systemui/StBar/AutoRotateButton;

    iput-boolean p2, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton$1;->val$autorotate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton$1;->val$autorotate:Z

    if-eqz v2, :cond_12

    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    :goto_11
    return-void

    :cond_12
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_11

    :catch_17
    move-exception v0

    const-string v2, "AutoRotateButton"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
