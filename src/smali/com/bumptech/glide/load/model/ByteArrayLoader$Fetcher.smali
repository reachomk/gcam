.class final Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ByteArrayLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter",
            "<TData;>;"
        }
    .end annotation
.end field

.field private final model:[B


# direct methods
.method public constructor <init>([BLcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 54
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final cleanup()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    invoke-interface {v0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-TData;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;->convert([B)Ljava/lang/Object;

    move-result-object v0

    .line 59
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 60
    return-void
.end method
