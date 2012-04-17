.class public Lcom/android/wanam/systemui/StBar/LockScreenButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "LockScreenButton.java"


# static fields
.field private static LOCK_SCREEN_STATE:Ljava/lang/Boolean;


# instance fields
.field private mLock:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    const-string v0, "toggleLockScreen"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private getLock(Landroid/content/Context;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 2

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_14

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_14
    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object v1
.end method

.method private static getState()Z
    .locals 1

    sget-object v0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    :cond_b
    sget-object v0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x30b004b

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/wanam/systemui/StBar/LockScreenButton;->getState()Z

    sget-object v2, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    if-nez v2, :cond_2c

    const-string v2, "Not yet initialized"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/wanam/systemui/StBar/LockScreenButton;->update()V

    return-void

    :cond_2c
    invoke-direct {p0, v0}, Lcom/android/wanam/systemui/StBar/LockScreenButton;->getLock(Landroid/content/Context;)Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v2, :cond_28

    sget-object v2, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    goto :goto_28

    :cond_48
    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    goto :goto_28
.end method

.method protected updateState()V
    .locals 2

    const v1, 0x3020080

    invoke-static {}, Lcom/android/wanam/systemui/StBar/LockScreenButton;->getState()Z

    sget-object v0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    iput v1, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mIcon:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mState:I

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->LOCK_SCREEN_STATE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x3020081

    iput v0, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mState:I

    goto :goto_f

    :cond_21
    iput v1, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wanam/systemui/StBar/LockScreenButton;->mState:I

    goto :goto_f
.end method
