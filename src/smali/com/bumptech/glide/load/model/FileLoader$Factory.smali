.class public Lcom/bumptech/glide/load/model/FileLoader$Factory;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/FileLoader$FileOpener",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1155
    new-instance v0, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/FileLoader$Factory;-><init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    .line 1171
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 2130
    new-instance v0, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/FileLoader$Factory;-><init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    .line 2146
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/FileLoader$FileOpener",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/bumptech/glide/load/model/FileLoader$Factory;->opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    .line 112
    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/bumptech/glide/load/model/FileLoader;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/FileLoader$Factory;->opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    return-object v0
.end method
