.class public Lcom/android/wanam/systemui/StBar/GPSButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "GPSButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/wanam/systemui/StBar/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/wanam/systemui/StBar/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleGPS"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
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

    sget-object v0, Lcom/android/wanam/systemui/StBar/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x30b0047

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 5

    iget-object v3, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    const-string v4, "gps"

    if-nez v1, :cond_17

    const/4 v3, 0x1

    :goto_13
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_17
    const/4 v3, 0x0

    goto :goto_13
.end method

.method protected updateState()V
    .locals 2

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x302007e

    iput v0, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mState:I

    const-string v0, "PowerButton"

    const-string v1, "GPS: on"

    invoke-static {v0, v1}, Lcom/android/wanam/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    const v0, 0x302007d

    iput v0, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wanam/systemui/StBar/GPSButton;->mState:I

    const-string v0, "PowerButton"

    const-string v1, "GPS: off"

    invoke-static {v0, v1}, Lcom/android/wanam/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
