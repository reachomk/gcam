.class public final Lcom/bumptech/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field frameCount:I

.field frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 19
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 21
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public final getNumFrames()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method
