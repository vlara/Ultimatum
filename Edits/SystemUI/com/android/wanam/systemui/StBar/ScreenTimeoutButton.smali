.class public Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "ScreenTimeoutButton.java"


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

.field private static final SCREEN_TIMEOUT_HIGH:I = 0x1d4c0

.field private static final SCREEN_TIMEOUT_LOW:I = 0x7530

.field private static final SCREEN_TIMEOUT_MAX:I = 0x927c0

.field private static final SCREEN_TIMEOUT_MIN:I = 0x3a98

.field private static final SCREEN_TIMEOUT_NORMAL:I = 0xea60

.field private static TOAST:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleScreenTimeout"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getScreenTimeout(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static timeoutToString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_3a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    div-int/lit16 v4, p1, 0x3e8

    aget v5, v3, v8

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :goto_1d
    array-length v5, v3

    if-ge v0, v5, :cond_38

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_38

    mul-int/lit8 v5, v0, 0x3c

    div-int/2addr v4, v5

    aget v5, v3, v9

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_38
    return-object v2

    nop

    :array_3a
    .array-data 0x4
        0x52t 0x0t 0xbt 0x3t
        0x53t 0x0t 0xbt 0x3t
        0x54t 0x0t 0xbt 0x3t
    .end array-data
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

    sget-object v0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x30b004a

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

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 6

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x3a98

    if-ge v1, v2, :cond_51

    const/16 v1, 0x3a98

    :goto_10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v2, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    if-nez v2, :cond_26

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    :cond_26
    sget-object v2, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    sget-object v2, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-static {v0, v1}, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->timeoutToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    const/16 v3, 0x11

    sget-object v4, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getXOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getYOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    sget-object v2, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_51
    const/16 v2, 0x7530

    if-ge v1, v2, :cond_58

    const/16 v1, 0x7530

    goto :goto_10

    :cond_58
    const v2, 0xea60

    if-ge v1, v2, :cond_61

    const v1, 0xea60

    goto :goto_10

    :cond_61
    const v2, 0x1d4c0

    if-ge v1, v2, :cond_6a

    const v1, 0x1d4c0

    goto :goto_10

    :cond_6a
    const v2, 0x927c0

    if-ge v1, v2, :cond_73

    const v1, 0x927c0

    goto :goto_10

    :cond_73
    const/16 v1, 0x3a98

    goto :goto_10
.end method

.method protected updateState()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_40

    const v0, 0x302008d

    iput v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mIcon:I

    iput v2, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mState:I

    :goto_16
    return-void

    :sswitch_17
    const v0, 0x3020089

    iput v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mIcon:I

    iput v2, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mState:I

    goto :goto_16

    :sswitch_1f
    const v0, 0x302008c

    iput v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mIcon:I

    iput v1, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mState:I

    goto :goto_16

    :sswitch_27
    const v0, 0x302008a

    iput v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mIcon:I

    iput v1, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mState:I

    goto :goto_16

    :sswitch_2f
    const v0, 0x302008b

    iput v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mIcon:I

    iput v1, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mState:I

    goto :goto_16

    :sswitch_37
    const v0, 0x3020088

    iput v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;->mState:I

    goto :goto_16

    :sswitch_data_40
    .sparse-switch
        0x3a98 -> :sswitch_17
        0x7530 -> :sswitch_1f
        0xea60 -> :sswitch_27
        0x1d4c0 -> :sswitch_2f
        0x927c0 -> :sswitch_37
    .end sparse-switch
.end method
