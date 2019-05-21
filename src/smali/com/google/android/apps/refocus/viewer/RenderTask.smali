.class public final Lcom/google/android/apps/refocus/viewer/RenderTask;
.super Ljava/lang/Object;
.source "RenderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;
    }
.end annotation


# instance fields
.field private final completionCallback:Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;

.field private final context:Landroid/content/Context;

.field private final mainHandler:Landroid/os/Handler;

.field private final options:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

.field private final progressCallback:Lcom/google/android/apps/refocus/processing/ProgressCallback;

.field private final tempBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;Lcom/google/android/apps/refocus/processing/ProgressCallback;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->options:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->mainHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->completionCallback:Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;

    .line 58
    iput-object p4, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->progressCallback:Lcom/google/android/apps/refocus/processing/ProgressCallback;

    .line 59
    iput-object p5, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->tempBitmap:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/refocus/viewer/RenderTask;)Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->completionCallback:Lcom/google/android/apps/refocus/viewer/RenderTask$RenderTaskCallback;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/apps/refocus/processing/Renderer;

    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->NORMAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/refocus/processing/Renderer;-><init>(Landroid/content/Context;I)V

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->options:Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v2, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->progressCallback:Lcom/google/android/apps/refocus/processing/ProgressCallback;

    iget-object v3, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/refocus/processing/Renderer;->render(Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;Lcom/google/android/apps/refocus/processing/ProgressCallback;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/refocus/viewer/RenderTask;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/refocus/viewer/RenderTask$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/refocus/viewer/RenderTask$1;-><init>(Lcom/google/android/apps/refocus/viewer/RenderTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
