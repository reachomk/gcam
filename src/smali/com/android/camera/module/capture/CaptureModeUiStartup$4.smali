.class final Lcom/android/camera/module/capture/CaptureModeUiStartup$4;
.super Ljava/lang/Object;
.source "CaptureModeUiStartup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModeUiStartup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

.field private synthetic val$aspectRatio:Lcom/android/camera/util/AspectRatio;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModeUiStartup;Lcom/android/camera/util/AspectRatio;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->val$aspectRatio:Lcom/android/camera/util/AspectRatio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$000(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "CaptureModuleInitializer#setupBottomBar"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/ui/views/CameraUi;->shutterButton:Lcom/android/camera/ui/ShutterButtonHolder;

    .line 180
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$700(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/google/android/apps/camera/async/UiObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/UiObservable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/layout/ActivityLayout;

    iget-object v0, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 181
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$800(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->val$aspectRatio:Lcom/android/camera/util/AspectRatio;

    invoke-virtual {v3}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    .line 182
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$800(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    .line 182
    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ShutterButtonHolder;->setEnabledWithoutAnimation(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    .line 187
    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$800(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getCaptureLayoutResult()Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ui/views/CameraUi;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ui/views/CameraUi;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/BottomBar;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ui/views/CameraUi;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->setPreviewLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V

    .line 191
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ui/views/CameraUi;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BottomBar;->setPreviewLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/views/CameraUi;->stickyBottomCaptureLayout:Lcom/android/camera/ui/StickyBottomCaptureLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->requestLayout()V

    .line 193
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/views/CameraUi;->bottomBar:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->requestLayout()V

    .line 196
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/views/CameraUi;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    invoke-virtual {v0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->hideIcon()V

    .line 197
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/views/CameraUi;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 1086
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$4;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$000(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 199
    return-void
.end method
