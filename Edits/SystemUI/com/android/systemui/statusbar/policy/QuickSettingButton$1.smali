.class Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "ACTION_CONFIGURATION_CHANGED - mBtnText.setText();"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2d
    return-void
.end method
