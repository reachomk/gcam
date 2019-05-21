.class final Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final index:I

.field private resource:Landroid/graphics/Bitmap;

.field private final targetTime:J


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    .line 281
    iput p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    .line 282
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    .line 283
    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    return v0
.end method


# virtual methods
.method final getResource()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4

    .prologue
    .line 273
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1291
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    .line 1292
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1293
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 273
    return-void
.end method
