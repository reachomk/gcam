.class final Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameSignature"
.end annotation


# instance fields
.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;-><init>(Ljava/util/UUID;)V

    .line 313
    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    .line 318
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 322
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    if-eqz v0, :cond_0

    .line 323
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    .line 324
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
