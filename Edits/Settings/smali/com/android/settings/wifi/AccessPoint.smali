.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPoint$1;,
        Lcom/android/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 45
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .registers 4
    .parameter "context"
    .parameter "result"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 69
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 175
    const v0, 0x7f040079

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 176
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 178
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .parameter "context"
    .parameter "config"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 69
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 168
    const v0, 0x7f040079

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 169
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 171
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .parameter "context"
    .parameter "savedState"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 69
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 182
    const v0, 0x7f040079

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 184
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_23

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 188
    :cond_23
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_36

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 192
    :cond_36
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 193
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 194
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 196
    :cond_54
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 197
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "string"

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .registers 6
    .parameter "result"

    .prologue
    .line 152
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 153
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 154
    .local v1, wpa2:Z
    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    .line 155
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 162
    :goto_16
    return-object v2

    .line 156
    :cond_17
    if-eqz v1, :cond_1c

    .line 157
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_16

    .line 158
    :cond_1c
    if-eqz v0, :cond_21

    .line 159
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_16

    .line 161
    :cond_21
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_16
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .registers 3
    .parameter "result"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 100
    const/4 v0, 0x4

    .line 112
    :goto_b
    return v0

    .line 101
    :cond_c
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 102
    const/4 v0, 0x5

    goto :goto_b

    .line 105
    :cond_18
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 106
    const/4 v0, 0x1

    goto :goto_b

    .line 107
    :cond_24
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 108
    const/4 v0, 0x2

    goto :goto_b

    .line 109
    :cond_30
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 110
    const/4 v0, 0x3

    goto :goto_b

    .line 112
    :cond_3c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7
    .parameter "config"

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v2

    .line 93
    :cond_e
    :goto_e
    return v0

    .line 82
    :cond_f
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1f
    move v0, v4

    .line 84
    goto :goto_e

    .line 87
    :cond_21
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 88
    const/4 v0, 0x4

    goto :goto_e

    .line 90
    :cond_2b
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_36

    move v0, v3

    .line 91
    goto :goto_e

    .line 93
    :cond_36
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .parameter "config"

    .prologue
    .line 209
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1e

    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 211
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 212
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 213
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 214
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 215
    return-void

    .line 209
    :cond_1e
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 218
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 221
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    :goto_1e
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 222
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 223
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 224
    :cond_2b
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 225
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 226
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 227
    return-void

    .line 221
    :cond_35
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private refresh()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 351
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 354
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_18

    .line 355
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    :goto_17
    return-void

    .line 356
    :cond_18
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2a

    .line 357
    const v3, 0x7f0b0278

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 358
    :cond_2a
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_5d

    .line 359
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_c6

    goto :goto_17

    .line 368
    :pswitch_3c
    const v3, 0x7f0b0273

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 361
    :pswitch_47
    const v3, 0x7f0b0277

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 365
    :pswitch_52
    const v3, 0x7f0b0274

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 371
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_70

    .line 373
    const v3, 0x7f0b0272

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_70
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_91

    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_b2

    .line 379
    const v3, 0x7f0b027b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_81
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_91
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_a9

    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_a9

    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_ba

    .line 388
    const v3, 0x7f0b0279

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_a9
    :goto_a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 381
    :cond_b2
    const v3, 0x7f0b027c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_81

    .line 390
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_ba
    const v3, 0x7f0b027a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 359
    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_52
        :pswitch_52
        :pswitch_47
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 337
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 338
    .local v0, length:I
    if-le v0, v2, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    .line 340
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 342
    .end local p0
    :cond_1e
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 7
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 245
    instance-of v3, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_8

    move v1, v2

    .line 269
    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 248
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 250
    .local v0, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v3, v4, :cond_17

    .line 251
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_7

    .line 254
    :cond_17
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_27

    .line 255
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_7

    move v1, v2

    goto :goto_7

    .line 258
    :cond_27
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_34

    .line 259
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v1, :cond_7

    move v1, v2

    goto :goto_7

    .line 269
    :cond_34
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .registers 3

    .prologue
    .line 403
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_a

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 405
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_f

    .line 410
    :goto_e
    return-void

    .line 407
    :cond_f
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 408
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_e
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .registers 3

    .prologue
    .line 318
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 319
    const/4 v0, -0x1

    .line 321
    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_8
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .registers 5
    .parameter "concise"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_a2

    .line 147
    if-eqz p1, :cond_99

    const-string v1, ""

    :goto_d
    return-object v1

    .line 119
    :pswitch_e
    if-eqz p1, :cond_18

    const v1, 0x7f0b0282

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_18
    const v1, 0x7f0b0289

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 122
    :pswitch_20
    sget-object v1, Lcom/android/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b0

    .line 134
    if-eqz p1, :cond_6d

    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 124
    :pswitch_37
    if-eqz p1, :cond_41

    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_41
    const v1, 0x7f0b0285

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 127
    :pswitch_49
    if-eqz p1, :cond_53

    const v1, 0x7f0b027f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_53
    const v1, 0x7f0b0286

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 130
    :pswitch_5b
    if-eqz p1, :cond_65

    const v1, 0x7f0b0280

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_65
    const v1, 0x7f0b0287

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 134
    :cond_6d
    const v1, 0x7f0b0288

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 138
    :pswitch_75
    if-eqz p1, :cond_7f

    const v1, 0x7f0b027d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_7f
    const v1, 0x7f0b0284

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 142
    :pswitch_87
    const v1, 0x7f0b028a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    .line 144
    :pswitch_90
    const v1, 0x7f0b028b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    .line 147
    :cond_99
    const v1, 0x7f0b0283

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    .line 117
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_75
        :pswitch_20
        :pswitch_e
        :pswitch_87
        :pswitch_90
    .end packed-switch

    .line 122
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_49
        :pswitch_5b
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 232
    const v1, 0x7f080163

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_18

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :goto_17
    return-void

    .line 236
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 237
    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_30

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2b
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_17

    :cond_30
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2b
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedState"

    .prologue
    .line 200
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_24

    .line 204
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_24
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 8
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, reorder:Z
    if-eqz p1, :cond_36

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 295
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_34

    const/4 v1, 0x1

    .line 298
    :goto_16
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 300
    .local v0, newRssi:I
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_25

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_27

    .line 301
    :cond_25
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 303
    :cond_27
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 304
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 305
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 312
    .end local v0           #newRssi:I
    :cond_2e
    :goto_2e
    if-eqz v1, :cond_33

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 315
    :cond_33
    return-void

    .line 295
    :cond_34
    const/4 v1, 0x0

    goto :goto_16

    .line 306
    :cond_36
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2e

    .line 307
    const/4 v1, 0x1

    .line 308
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 309
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 310
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_2e
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .registers 5
    .parameter "result"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_3d

    .line 274
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_2d

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 276
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_2d

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 282
    .end local v0           #oldLevel:I
    :cond_2d
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 283
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 285
    :cond_38
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 286
    const/4 v1, 0x1

    .line 288
    :goto_3c
    return v1

    :cond_3d
    const/4 v1, 0x0

    goto :goto_3c
.end method
