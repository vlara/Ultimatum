.class public Lcom/android/wanam/systemui/StBar/AutoRotateButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "AutoRotateButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AutoRotateButton"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleAutoRotate"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private getAutoRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private setAutoRotation(Z)V
    .locals 1

    new-instance v0, Lcom/android/wanam/systemui/StBar/AutoRotateButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/wanam/systemui/StBar/AutoRotateButton$1;-><init>(Lcom/android/wanam/systemui/StBar/AutoRotateButton;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x30b0045

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v0}, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->setAutoRotation(Z)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected updateState()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->getAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x3020083

    iput v0, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->mState:I

    :goto_e
    return-void

    :cond_f
    const v0, 0x3020082

    iput v0, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wanam/systemui/StBar/AutoRotateButton;->mState:I

    goto :goto_e
.end method
