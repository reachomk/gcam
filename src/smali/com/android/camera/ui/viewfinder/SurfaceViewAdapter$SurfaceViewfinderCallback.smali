.class final Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;
.super Ljava/lang/Object;
.source "SurfaceViewAdapter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceViewfinderCallback"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;B)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;-><init>(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7

    .prologue
    .line 409
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p3, p4}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 410
    invoke-static {v0}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x35

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SurfaceEvent: surfaceChanged (newSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 417
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;

    move-result-object v2

    .line 420
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 422
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x44

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SurfaceEvent: surfaceChanged (surfaceFrame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v2, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$902(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Landroid/view/Surface;)Landroid/view/Surface;

    .line 427
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$600(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$600(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Setting fixed size after surfaceChanged event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$1200(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    .line 431
    invoke-static {v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$600(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v3}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$600(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    .line 430
    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 432
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1, v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$802(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    .line 433
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$1100(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V

    .line 434
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "SurfaceEvent: surfaceCreated"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$802(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$902(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Landroid/view/Surface;)Landroid/view/Surface;

    .line 401
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$1000(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/stats/ViewfinderSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$1000(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/stats/ViewfinderSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/ViewfinderSession;->recordViewfinderSurfaceCreated()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$1100(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V

    .line 405
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0, v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$802(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0, v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$902(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Landroid/view/Surface;)Landroid/view/Surface;

    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "SurfaceEvent: surfaceDestroyed"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$1100(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V

    .line 442
    return-void
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$SurfaceViewfinderCallback;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "SurfaceEvent: surfaceRedrawNeeded"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 393
    return-void
.end method
