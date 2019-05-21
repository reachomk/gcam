.class public final Lcom/bumptech/glide/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_OPTIONS:Lcom/bumptech/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Lcom/bumptech/glide/GlideContext;

.field private final defaultRequestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/BaseRequestOptions",
            "<*>;"
        }
    .end annotation
.end field

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field private requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/BaseRequestOptions",
            "<*>;"
        }
    .end annotation
.end field

.field private thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/bumptech/glide/TransitionOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/TransitionOptions;-><init>(B)V

    sput-object v0, Lcom/bumptech/glide/RequestBuilder;->DEFAULT_ANIMATION_OPTIONS:Lcom/bumptech/glide/TransitionOptions;

    .line 38
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 39
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/GlideContext;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GlideContext;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/bumptech/glide/RequestBuilder;->DEFAULT_ANIMATION_OPTIONS:Lcom/bumptech/glide/TransitionOptions;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 70
    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 71
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GlideContext;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    .line 72
    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 74
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestOptions()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 76
    return-void
.end method

.method private final buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v0, :cond_2

    .line 573
    iget-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 580
    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DEFAULT_ANIMATION_OPTIONS:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v8, p3

    .line 584
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v0

    move-object v9, v0

    .line 587
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v1

    .line 588
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v0

    .line 589
    invoke-static/range {p5 .. p6}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v2, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 590
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_3

    .line 591
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v1

    .line 592
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v0

    move v10, v0

    move v11, v1

    .line 595
    :goto_2
    new-instance v3, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v3, p2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 596
    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 600
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    move-object v2, p1

    move-object v4, v8

    move-object v5, v9

    move v6, v11

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 602
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 603
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 620
    :goto_3
    return-object v3

    .line 3549
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unknown priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3551
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    move-object v9, v0

    goto/16 :goto_1

    .line 3553
    :pswitch_1
    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    move-object v9, v0

    goto/16 :goto_1

    .line 3556
    :pswitch_2
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    move-object v9, v0

    goto/16 :goto_1

    .line 620
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v3

    goto :goto_3

    :cond_3
    move v10, v0

    move v11, v1

    goto :goto_2

    :cond_4
    move-object v8, v0

    goto/16 :goto_0

    .line 3549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    .line 196
    return-object p0
.end method

.method private final obtainRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions",
            "<*>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 631
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    .line 642
    invoke-virtual {v3}, Lcom/bumptech/glide/GlideContext;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v10

    .line 643
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/TransitionOptions;->getTransitionFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-result-object v11

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p5

    move-object v7, p1

    move-object v9, p3

    .line 631
    invoke-static/range {v0 .. v11}, Lcom/bumptech/glide/request/SingleRequest;->obtain$51666RRD5TH7ARBGEHIM6Q1FCTM6IP355T3MOQB4CL1MURJKCLS78EQCD9GNCO9FDHGMSPPF9TH6KPB3EGTKOQJ1EPGIUR31DPJIUGRCC5PN6EQCCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRICLONAPBJEGNK4OBJCL96ASBLCLPN8JRGEHKMURJJ7D4KIJ33DTMIUOJLDLO78PB3D0NMER39CHIIUK3ID5NN4QBKF4TKOORFDKNM4TBDE1Q6AOR85TJMOQB4CKNN4PBHELIN6T1FEHGN4PR5EGNL8OBICTIN8EQCCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRICLONAPBJEGNL4PBHELIN6T2CD5PN8PBECLP3MJ33DTMIUOJLDLO78PB3D0NMER39CHIIUSJ5E5QMASRK5T96ASBLCLPN8GRFDTP68QBEC5Q6USHR9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDHNM2P1FCLN6EQBECKNKARJ7D5N6AEQCCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRICLONAPBJEGNN8SJ1DPPMIT39DTN2UL3IC5N76QBKD5NMSHJ1CDQ6USJP7CKKOORFDKNM4TBDE1Q6AOR85TJMOQB4CKNN4PBHELIN6T1FADKMSPRCCL96ASBLCLPN8EO_(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions",
            "<*>;)",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->defaultRequestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 89
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 90
    return-object p0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0
.end method

.method public final clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 329
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 330
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 331
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 379
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 382
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 387
    :cond_0
    sget-object v0, Lcom/bumptech/glide/RequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 405
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 3015
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3016
    new-instance v0, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 405
    :goto_1
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop(Landroid/content/Context;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside(Landroid/content/Context;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter(Landroid/content/Context;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0

    .line 3017
    :cond_2
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3018
    new-instance v0, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 3020
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unhandled class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 347
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 1563
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v4

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 1564
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v5

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 1563
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 360
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 361
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/RequestManager;->track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V

    .line 363
    return-object p1
.end method

.method public final load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 314
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 313
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final submit(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    .line 458
    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    .line 460
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->context:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/RequestBuilder$1;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/RequestBuilder$1;-><init>(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :goto_0
    return-object v0

    .line 470
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public final thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 142
    return-object p0
.end method

.method public final transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions",
            "<*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/TransitionOptions;

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 105
    return-object p0
.end method
