.class public final Lcom/bumptech/glide/load/model/ByteArrayLoader;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;,
        Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;,
        Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;,
        Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<[BTData;>;"
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


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 4

    .prologue
    .line 19
    check-cast p1, [B

    .line 1030
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    invoke-direct {v2, p1, v3}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;-><init>([BLcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 19
    return-object v0
.end method

.method public final bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
