.class public Lcom/android/systemui/statusbar/tablet/InputMethodButton;
.super Landroid/widget/ImageView;
.source "InputMethodButton.java"


# instance fields
.field private mHardKeyboardAvailable:Z

.field private mIcon:Landroid/widget/ImageView;

.field private final mId:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mScreenLocked:Z

.field private mShowButton:Z

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mId:I

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private needsToShowIMEButton()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    if-eqz v3, :cond_c

    :cond_a
    move v1, v2

    :cond_b
    :goto_b
    :pswitch_b
    return v1

    :cond_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->loadInputMethodSelectorVisibility()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    move v1, v2

    goto :goto_b

    :pswitch_19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->needsToShowIMEButtonWhenVisibilityAuto()Z

    move-result v1

    goto :goto_b

    :pswitch_1e
    move v1, v2

    goto :goto_b

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_b
        :pswitch_1e
    .end packed-switch
.end method

.method private needsToShowIMEButtonWhenVisibilityAuto()Z
    .locals 14

    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x2

    if-le v0, v12, :cond_f

    const/4 v12, 0x1

    :goto_e
    return v12

    :cond_f
    const/4 v12, 0x1

    if-ge v0, v12, :cond_14

    const/4 v12, 0x0

    goto :goto_e

    :cond_14
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v0, :cond_4c

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v4, v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_33

    add-int/lit8 v7, v7, 0x1

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_33
    const/4 v6, 0x0

    :goto_34
    if-ge v6, v10, :cond_30

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_48

    add-int/lit8 v7, v7, 0x1

    move-object v8, v9

    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_48
    add-int/lit8 v1, v1, 0x1

    move-object v2, v9

    goto :goto_45

    :cond_4c
    const/4 v12, 0x1

    if-gt v7, v12, :cond_52

    const/4 v12, 0x1

    if-le v1, v12, :cond_54

    :cond_52
    const/4 v12, 0x1

    goto :goto_e

    :cond_54
    const/4 v12, 0x1

    if-ne v7, v12, :cond_84

    const/4 v12, 0x1

    if-ne v1, v12, :cond_84

    if-eqz v8, :cond_82

    if-eqz v2, :cond_82

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_78

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_78

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_82

    :cond_78
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_82

    const/4 v12, 0x0

    goto :goto_e

    :cond_82
    const/4 v12, 0x1

    goto :goto_e

    :cond_84
    const/4 v12, 0x0

    goto :goto_e
.end method

.method private refreshStatusIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->needsToShowIMEButton()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setVisibility(I)V

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    return-void
.end method

.method public setHardKeyboardStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    :cond_9
    return-void
.end method

.method public setIconImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mToken:Landroid/os/IBinder;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    return-void
.end method

.method public setScreenLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    return-void
.end method
