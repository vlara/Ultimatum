.class public abstract Lcom/android/wanam/systemui/StBar/PowerButton;
.super Ljava/lang/Object;
.source "PowerButton.java"


# static fields
.field private static final BUTTONS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/wanam/systemui/StBar/PowerButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BUTTONS_LOADED:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/wanam/systemui/StBar/PowerButton;",
            ">;"
        }
    .end annotation
.end field

.field public static final BUTTON_AIRPLANE:Ljava/lang/String; = "toggleAirplane"

.field public static final BUTTON_AUTOROTATE:Ljava/lang/String; = "toggleAutoRotate"

.field public static final BUTTON_BLUETOOTH:Ljava/lang/String; = "toggleBluetooth"

.field public static final BUTTON_BRIGHTNESS:Ljava/lang/String; = "toggleBrightness"

.field public static final BUTTON_FLASHLIGHT:Ljava/lang/String; = "toggleFlashlight"

.field public static final BUTTON_GPS:Ljava/lang/String; = "toggleGPS"

.field public static final BUTTON_LOCKSCREEN:Ljava/lang/String; = "toggleLockScreen"

.field public static final BUTTON_MOBILEDATA:Ljava/lang/String; = "toggleMobileData"

.field public static final BUTTON_REBOOT:Ljava/lang/String; = "toggleReboot"

.field public static final BUTTON_SCREENTIMEOUT:Ljava/lang/String; = "toggleScreenTimeout"

.field public static final BUTTON_SHUTDOWN:Ljava/lang/String; = "toggleShutdown"

.field public static final BUTTON_SOUND:Ljava/lang/String; = "toggleSound"

.field public static final BUTTON_SYNC:Ljava/lang/String; = "toggleSync"

.field public static final BUTTON_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final BUTTON_WIFI:Ljava/lang/String; = "toggleWifi"

.field public static final BUTTON_WIFI_AP:Ljava/lang/String; = "toggleWifiAp"

.field private static GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener; = null

.field private static GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener; = null

.field private static final MASK_MODE:Landroid/graphics/PorterDuff$Mode; = null

.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_INTERMEDIATE:I = 0x5

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x6

.field public static final TAG:Ljava/lang/String; = "PowerButton"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mIcon:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mState:I

.field protected mStatusIcon:I

.field protected mType:Ljava/lang/String;

.field protected mView:Landroid/view/View;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    const-class v2, Lcom/android/wanam/systemui/StBar/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifiAp"

    const-class v2, Lcom/android/wanam/systemui/StBar/WifiApButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    const-class v2, Lcom/android/wanam/systemui/StBar/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    const-class v2, Lcom/android/wanam/systemui/StBar/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    const-class v2, Lcom/android/wanam/systemui/StBar/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    const-class v2, Lcom/android/wanam/systemui/StBar/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    const-class v2, Lcom/android/wanam/systemui/StBar/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    const-class v2, Lcom/android/wanam/systemui/StBar/SyncButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    const-class v2, Lcom/android/wanam/systemui/StBar/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    const-class v2, Lcom/android/wanam/systemui/StBar/ScreenTimeoutButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    const-class v2, Lcom/android/wanam/systemui/StBar/LockScreenButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    const-class v2, Lcom/android/wanam/systemui/StBar/AirplaneButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    const-class v2, Lcom/android/wanam/systemui/StBar/FlashlightButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleReboot"

    const-class v2, Lcom/android/wanam/systemui/StBar/RebootButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleShutdown"

    const-class v2, Lcom/android/wanam/systemui/StBar/ShutdownButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    sput-object v3, Lcom/android/wanam/systemui/StBar/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    sput-object v3, Lcom/android/wanam/systemui/StBar/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mType:Ljava/lang/String;

    new-instance v0, Lcom/android/wanam/systemui/StBar/PowerButton$1;

    invoke-direct {v0, p0}, Lcom/android/wanam/systemui/StBar/PowerButton$1;-><init>(Lcom/android/wanam/systemui/StBar/PowerButton;)V

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wanam/systemui/StBar/PowerButton$2;

    invoke-direct {v0, p0}, Lcom/android/wanam/systemui/StBar/PowerButton$2;-><init>(Lcom/android/wanam/systemui/StBar/PowerButton;)V

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/wanam/systemui/StBar/PowerButton$3;

    invoke-direct {v0, p0}, Lcom/android/wanam/systemui/StBar/PowerButton$3;-><init>(Lcom/android/wanam/systemui/StBar/PowerButton;)V

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wanam/systemui/StBar/PowerButton;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wanam/systemui/StBar/PowerButton;->updateImageView(II)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/View$OnLongClickListener;
    .locals 1

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public static getAllBroadcastIntentFilters()Landroid/content/IntentFilter;
    .locals 9

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sget-object v8, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_8
    sget-object v7, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v1}, Lcom/android/wanam/systemui/StBar/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v5, :cond_12

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_39
    monitor-exit v8

    return-object v2

    :catchall_3b
    move-exception v7

    monitor-exit v8
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v7
.end method

.method public static getAllObservedUris()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_8
    sget-object v6, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :catchall_3c
    move-exception v6

    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3c

    throw v6

    :cond_3f
    :try_start_3f
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    return-object v5
.end method

.method protected static getLoadedButton(Ljava/lang/String;)Lcom/android/wanam/systemui/StBar/PowerButton;
    .locals 2

    sget-object v1, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wanam/systemui/StBar/PowerButton;

    monitor-exit v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static handleOnChangeUri(Landroid/net/Uri;)V
    .locals 4

    sget-object v3, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, p0}, Lcom/android/wanam/systemui/StBar/PowerButton;->onChangeUri(Landroid/net/Uri;)V

    goto :goto_d

    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2

    :cond_2a
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    return-void
.end method

.method public static handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_7
    sget-object v3, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v1}, Lcom/android/wanam/systemui/StBar/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, p0, p1}, Lcom/android/wanam/systemui/StBar/PowerButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_11

    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw v3

    :cond_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    return-void
.end method

.method public static loadButton(Ljava/lang/String;Landroid/view/View;)Z
    .locals 6

    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    if-eqz p1, :cond_57

    sget-object v3, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_d
    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v2, p1}, Lcom/android/wanam/systemui/StBar/PowerButton;->setupButton(Landroid/view/View;)V

    :goto_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_54

    const/4 v2, 0x1

    :goto_22
    return v2

    :cond_23
    :try_start_23
    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v1, p1}, Lcom/android/wanam/systemui/StBar/PowerButton;->setupButton(Landroid/view/View;)V

    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_3a

    goto :goto_20

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v2, "PowerButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading button: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_54

    throw v2

    :cond_57
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public static setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    sput-object p0, Lcom/android/wanam/systemui/StBar/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    sput-object p0, Lcom/android/wanam/systemui/StBar/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public static unloadAllButtons()V
    .locals 4

    sget-object v3, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wanam/systemui/StBar/PowerButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wanam/systemui/StBar/PowerButton;->setupButton(Landroid/view/View;)V

    goto :goto_d

    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2

    :cond_21
    :try_start_21
    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1e

    return-void
.end method

.method public static unloadButton(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wanam/systemui/StBar/PowerButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/wanam/systemui/StBar/PowerButton;->setupButton(Landroid/view/View;)V

    sget-object v0, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public static updateAllButtons()V
    .locals 4

    sget-object v3, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/wanam/systemui/StBar/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v1}, Lcom/android/wanam/systemui/StBar/PowerButton;->update()V

    goto :goto_d

    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    return-void
.end method

.method private updateImageView(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateImageView(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    return-object v0
.end method

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected abstract getText()I
.end method

.method protected abstract handleLongClick()Z
.end method

.method protected onChange()V
    .locals 0

    return-void
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1b
    return-void
.end method

.method protected abstract toggleState()V
.end method

.method protected update()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;->updateState()V

    invoke-virtual {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;->updateView()V

    return-void
.end method

.method protected abstract updateState()V
.end method

.method protected updateText()V
    .locals 3

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_16

    const v0, 0x3060015

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;->getText()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_16
    return-void
.end method

.method protected updateView()V
    .locals 2

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
