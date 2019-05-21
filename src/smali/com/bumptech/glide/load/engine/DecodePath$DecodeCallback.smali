.class Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;
.super Ljava/lang/Object;
.source "DecodePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DecodeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/bumptech/glide/load/DataSource;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    .prologue
    .line 2469
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2470
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->dataSource:Lcom/bumptech/glide/load/DataSource;

    .line 2471
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;B)V
    .locals 0

    .prologue
    .line 3465
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method private static getResourceClass(Lcom/bumptech/glide/load/engine/Resource;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 2523
    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onResourceDecoded(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1475
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->getResourceClass(Lcom/bumptech/glide/load/engine/Resource;)Ljava/lang/Class;

    move-result-object v6

    .line 1478
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->dataSource:Lcom/bumptech/glide/load/DataSource;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq v0, v2, :cond_7

    .line 1479
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$300(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getTransformation(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    move-result-object v5

    .line 1480
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$400(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$500(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result v2

    invoke-interface {v5, p1, v0, v2}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    move-object v8, v0

    .line 1483
    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$300(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/DecodeHelper;->isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$300(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v1

    .line 1491
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$600(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Options;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object v0

    move-object v9, v1

    .line 1498
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$300(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$700(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->isSourceKey(Lcom/bumptech/glide/load/Key;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1499
    :goto_2
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$800(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v2, v1, v3, v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1501
    if-nez v9, :cond_3

    .line 1502
    new-instance v0, Lcom/bumptech/glide/Registry$MissingComponentException;

    invoke-interface {v8}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/Registry$MissingComponentException;-><init>(Ljava/lang/Class;)V

    throw v0

    .line 1494
    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    move-object v9, v1

    goto :goto_1

    .line 1498
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1505
    :cond_3
    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne v0, v1, :cond_5

    .line 1506
    new-instance v0, Lcom/bumptech/glide/load/engine/DataCacheKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$700(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$900(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 1514
    :goto_3
    invoke-static {v8}, Lcom/bumptech/glide/load/engine/LockedResource;->obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object v8

    .line 1515
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$1000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    move-result-object v1

    invoke-virtual {v1, v0, v9, v8}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->init(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/LockedResource;)V

    .line 1518
    :cond_4
    return-object v8

    .line 1507
    :cond_5
    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne v0, v1, :cond_6

    .line 1508
    new-instance v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$700(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$900(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$400(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v4}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$500(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result v4

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 1509
    invoke-static {v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$600(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Options;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    goto :goto_3

    .line 1511
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v8, p1

    move-object v5, v1

    goto/16 :goto_0
.end method
