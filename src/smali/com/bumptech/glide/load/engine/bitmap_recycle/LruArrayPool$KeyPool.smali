.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool",
        "<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .prologue
    .line 203
    .line 1213
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;)V

    .line 203
    return-object v0
.end method

.method final get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    .line 207
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->init(ILjava/lang/Class;)V

    .line 208
    return-object v0
.end method
