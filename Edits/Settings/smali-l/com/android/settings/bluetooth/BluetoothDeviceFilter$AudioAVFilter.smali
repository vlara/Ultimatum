.class final Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAVFilter;
.super Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioAVFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2
    .parameter "uuids"
    .parameter "btClass"

    .prologue
    const/4 v0, 0x1

    .line 195
    if-eqz p1, :cond_c

    .line 196
    sget-object v1, Lcom/android/settings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 204
    :cond_b
    :goto_b
    return v0

    .line 199
    :cond_c
    if-eqz p2, :cond_14

    .line 200
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 204
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method
