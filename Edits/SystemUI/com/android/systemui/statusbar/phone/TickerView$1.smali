.class Lcom/android/systemui/statusbar/phone/TickerView$1;
.super Landroid/content/BroadcastReceiver;
.source "TickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TickerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TickerView$1;->this$0:Lcom/android/systemui/statusbar/phone/TickerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TickerView$1;->this$0:Lcom/android/systemui/statusbar/phone/TickerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TickerView$1;->this$0:Lcom/android/systemui/statusbar/phone/TickerView;

    const v3, 0x7f0e009b

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/TickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/TickerView;->textOld:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TickerView$1;->this$0:Lcom/android/systemui/statusbar/phone/TickerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TickerView$1;->this$0:Lcom/android/systemui/statusbar/phone/TickerView;

    const v3, 0x7f0e009c

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/TickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/TickerView;->textNew:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TickerView$1;->this$0:Lcom/android/systemui/statusbar/phone/TickerView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TickerView;->textOld:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TickerView$1;->this$0:Lcom/android/systemui/statusbar/phone/TickerView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TickerView;->textNew:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3a
    return-void
.end method
