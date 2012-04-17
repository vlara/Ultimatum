.class public Lcom/android/wanam/util/LedController;
.super Ljava/lang/Object;
.source "LedController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LedController"

.field private static sInstance:Lcom/android/wanam/util/LedController;


# instance fields
.field private mCamera:Landroid/hardware/Camera;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method public static getInstance()Lcom/android/wanam/util/LedController;
    .locals 1

    sget-object v0, Lcom/android/wanam/util/LedController;->sInstance:Lcom/android/wanam/util/LedController;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/wanam/util/LedController;

    invoke-direct {v0}, Lcom/android/wanam/util/LedController;-><init>()V

    sput-object v0, Lcom/android/wanam/util/LedController;->sInstance:Lcom/android/wanam/util/LedController;

    :cond_b
    sget-object v0, Lcom/android/wanam/util/LedController;->sInstance:Lcom/android/wanam/util/LedController;

    return-object v0
.end method

.method private openCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_11

    const-string v0, "LedController"

    const-string v1, "openCamera()"

    invoke-static {v0, v1}, Lcom/android/wanam/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    :cond_11
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    const-string v0, "LedController"

    const-string v1, "releaseCamera()"

    invoke-static {v0, v1}, Lcom/android/wanam/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public isFlashSupported()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/wanam/util/LedController;->openCamera()V

    iget-object v2, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-direct {p0}, Lcom/android/wanam/util/LedController;->releaseCamera()V

    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public off()V
    .locals 2

    iget-object v1, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/android/wanam/util/LedController;->releaseCamera()V

    :cond_17
    return-void
.end method

.method public on()V
    .locals 3

    invoke-direct {p0}, Lcom/android/wanam/util/LedController;->openCamera()V

    iget-object v1, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    iget-object v1, p0, Lcom/android/wanam/util/LedController;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method
