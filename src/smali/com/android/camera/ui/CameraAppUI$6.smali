.class final Lcom/android/camera/ui/CameraAppUI$6;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraAppUI;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/MainActivityLayout;Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/util/AccessibilityUtil;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;ZLcom/android/camera/debug/trace/Trace;Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/google/android/apps/camera/async/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraAppUI;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNonDecorWindowSizeChanged(II)V
    .locals 4

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$500(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 878
    iget-object v0, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    .line 879
    invoke-static {v0}, Lcom/android/camera/ui/CameraAppUI;->access$500(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getCaptureLayoutResult()Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    move-result-object v0

    .line 880
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$600(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/StickyBottomCaptureLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$600(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/StickyBottomCaptureLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->setPreviewLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V

    .line 882
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$700(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setUncoveredPreviewRect(Landroid/graphics/RectF;)V

    .line 883
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$800(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/BottomBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BottomBar;->setPreviewLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V

    .line 884
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$900(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->setUncoveredPreviewRect(Landroid/graphics/RectF;)V

    .line 885
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5MMASJ185O70LA97CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/CameraAppUI;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->previewRect:Landroid/graphics/RectF;

    invoke-interface {v1, v2}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 886
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$1100(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    iget-object v3, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->previewRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Lcom/android/camera/ui/CameraAppUI;->access$1000(Lcom/android/camera/ui/CameraAppUI;Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    iget-object v2, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Lcom/android/camera/ui/CameraAppUI;->access$1000(Lcom/android/camera/ui/CameraAppUI;Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 890
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v2, :cond_4

    .line 892
    :cond_0
    invoke-static {}, Lcom/android/camera/ui/CameraAppUI;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Uncovered preview rect has negative width or height"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$1400(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PhotoVideoPaginator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 900
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$1400(Lcom/android/camera/ui/CameraAppUI;)Lcom/android/camera/ui/PhotoVideoPaginator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    iget-object v3, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->paginatorRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Lcom/android/camera/ui/CameraAppUI;->access$1000(Lcom/android/camera/ui/CameraAppUI;Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PhotoVideoPaginator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$1500(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 903
    iget-object v1, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/ui/CameraAppUI;->access$1500(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->burstChipHolderRect:Landroid/graphics/RectF;

    invoke-static {v2, v0}, Lcom/android/camera/ui/CameraAppUI;->access$1000(Lcom/android/camera/ui/CameraAppUI;Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    :cond_3
    return-void

    .line 894
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/CameraAppUI$6;->this$0:Lcom/android/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/ui/CameraAppUI;->access$1300(Lcom/android/camera/ui/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
