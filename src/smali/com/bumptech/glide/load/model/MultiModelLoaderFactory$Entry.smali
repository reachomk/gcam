.class final Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;"
        }
    .end annotation
.end field

.field private final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->modelClass:Ljava/lang/Class;

    .line 172
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    .line 173
    iput-object p3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 174
    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    return-object v0
.end method


# virtual methods
.method public final handles(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->modelClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

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
    .line 177
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
