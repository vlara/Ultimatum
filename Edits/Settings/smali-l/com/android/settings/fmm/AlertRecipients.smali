.class public Lcom/android/settings/fmm/AlertRecipients;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AlertRecipients.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/AlertRecipients;)Lcom/android/settings/fmm/RecipientsPlusView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1d

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/fmm/AlertRecipients;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0728

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    :cond_1d
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 105
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 93
    :cond_6
    :goto_6
    return-void

    .line 90
    :cond_7
    const/16 v0, 0x65

    if-ne p1, v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fmm/RecipientsPlusView;->SetContactNumber(Ljava/util/ArrayList;)V

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 48
    const v3, 0x7f04007e

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, view:Landroid/view/View;
    const v3, 0x7f08018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    .line 52
    const v3, 0x7f08018f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, buttonOk:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/fmm/AlertRecipients$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/AlertRecipients$1;-><init>(Lcom/android/settings/fmm/AlertRecipients;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v3, 0x7f040045

    iget-object v4, p0, Lcom/android/settings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fmm/RecipientsPlusView;

    iput-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    .line 63
    iget-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/fmm/AlertRecipients;->PlusLayout:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 66
    .local v0, ContactButton:Landroid/widget/ImageButton;
    new-instance v3, Lcom/android/settings/fmm/AlertRecipients$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/AlertRecipients$2;-><init>(Lcom/android/settings/fmm/AlertRecipients;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    .line 78
    iget-object v3, p0, Lcom/android/settings/fmm/AlertRecipients;->mMessage:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    return-object v2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 110
    return-void
.end method
