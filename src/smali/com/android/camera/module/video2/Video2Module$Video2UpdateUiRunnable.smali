.class final Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Video2UpdateUiRunnable"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/video2/Video2Module;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/video2/Video2Module;B)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;-><init>(Lcom/android/camera/module/video2/Video2Module;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$1300(Lcom/android/camera/module/video2/Video2Module;)Lcom/google/android/apps/camera/async/UiObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/UiObservable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/layout/ActivityLayout;

    .line 372
    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 373
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 374
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v1}, Lcom/android/camera/module/video2/Video2Module;->access$1400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 379
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v0, v0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    .line 378
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->onNonDecorWindowSizeChanged(II)V

    .line 381
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$1400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/ui/CaptureLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->getCaptureLayoutResult()Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v1}, Lcom/android/camera/module/video2/Video2Module;->access$1500(Lcom/android/camera/module/video2/Video2Module;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->previewRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2Module$Video2UpdateUiRunnable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v1}, Lcom/android/camera/module/video2/Video2Module;->access$000(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->updateLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V

    goto :goto_0
.end method
