.class Lcom/android/settings/BrightnessPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/BrightnessPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field automatic:Z

.field oldAutomatic:Z

.field oldProgress:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/android/settings/BrightnessPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/BrightnessPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/BrightnessPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 329
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_23

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_25

    :goto_1a
    iput-boolean v1, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    .line 334
    return-void

    :cond_23
    move v0, v2

    .line 330
    goto :goto_c

    :cond_25
    move v1, v2

    .line 332
    goto :goto_1a
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 347
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 339
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_21

    :goto_16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    return-void

    :cond_1f
    move v0, v2

    .line 339
    goto :goto_a

    :cond_21
    move v1, v2

    .line 341
    goto :goto_16
.end method
