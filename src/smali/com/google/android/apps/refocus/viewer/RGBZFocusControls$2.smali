.class final Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;
.super Ljava/lang/Object;
.source "RGBZFocusControls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->setFocusClient(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$400(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)V

    .line 235
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    .line 236
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f110191

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    .line 235
    invoke-static {v1, v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$502(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;)Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$600(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$500(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$600(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$ClingView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->addSliderUpdateListener(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$500(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$1;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->addSliderUpdateListener(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$500(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar;->setBokehChangedListener(Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$BokehChangedListener;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$2;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method
