.class final Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;
.super Ljava/lang/Object;
.source "TranscoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final fromClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private final toClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->fromClass:Ljava/lang/Class;

    .line 82
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->toClass:Ljava/lang/Class;

    .line 83
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    return-object v0
.end method


# virtual methods
.method public final handles(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->fromClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->toClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
