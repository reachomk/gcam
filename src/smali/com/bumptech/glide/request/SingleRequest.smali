.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/ResourceCallback;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/ResourceCallback;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final POOL:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private glideContext:Lcom/bumptech/glide/GlideContext;

.field private height:I

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private model:Ljava/lang/Object;

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private requestListener$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKJ5E5QMASRK9HKN6T35DPIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;"
        }
    .end annotation
.end field

.field private requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/BaseRequestOptions",
            "<*>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;"
        }
    .end annotation
.end field

.field private startTime:J

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

.field private final tag:Ljava/lang/String;

.field private target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/request/SingleRequest$1;

    invoke-direct {v1}, Lcom/bumptech/glide/request/SingleRequest$1;-><init>()V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/pool/FactoryPools;->simple(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest;->POOL:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;-><init>()V

    return-void
.end method

.method private final canNotifyStatusChanged()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    if-lez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final isFirstReadyResource()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final loadDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private final logV(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 520
    const-string v0, "Request"

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method private static maybeApplySizeMultiplier(IF)I
    .locals 1

    .prologue
    .line 404
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method public static obtain$51666RRD5TH7ARBGEHIM6Q1FCTM6IP355T3MOQB4CL1MURJKCLS78EQCD9GNCO9FDHGMSPPF9TH6KPB3EGTKOQJ1EPGIUR31DPJIUGRCC5PN6EQCCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRICLONAPBJEGNK4OBJCL96ASBLCLPN8JRGEHKMURJJ7D4KIJ33DTMIUOJLDLO78PB3D0NMER39CHIIUK3ID5NN4QBKF4TKOORFDKNM4TBDE1Q6AOR85TJMOQB4CKNN4PBHELIN6T1FEHGN4PR5EGNL8OBICTIN8EQCCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRICLONAPBJEGNL4PBHELIN6T2CD5PN8PBECLP3MJ33DTMIUOJLDLO78PB3D0NMER39CHIIUSJ5E5QMASRK5T96ASBLCLPN8GRFDTP68QBEC5Q6USHR9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDHNM2P1FCLN6EQBECKNKARJ7D5N6AEQCCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRICLONAPBJEGNN8SJ1DPPMIT39DTN2UL3IC5N76QBKD5NMSHJ1CDQ6USJP7CKKOORFDKNM4TBDE1Q6AOR85TJMOQB4CKNN4PBHELIN6T1FADKMSPRCCL96ASBLCLPN8EO_(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/request/SingleRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions",
            "<*>;II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<-TR;>;)",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->POOL:Landroid/support/v4/util/Pools$Pool;

    .line 119
    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    .line 120
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    invoke-direct {v0}, Lcom/bumptech/glide/request/SingleRequest;-><init>()V

    .line 1156
    :cond_0
    iput-object p0, v0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 1157
    iput-object p1, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 1158
    iput-object p2, v0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 1159
    iput-object p3, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 1160
    iput p4, v0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    .line 1161
    iput p5, v0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    .line 1162
    iput-object p6, v0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 1163
    iput-object p7, v0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 1164
    iput-object p8, v0, Lcom/bumptech/glide/request/SingleRequest;->requestListener$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKJ5E5QMASRK9HKN6T35DPIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 1165
    iput-object p9, v0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 1166
    iput-object p10, v0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 1167
    iput-object p11, v0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 1168
    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v1, v0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 136
    return-object v0
.end method

.method private final onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 7

    .prologue
    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 502
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getLogLevel()I

    move-result v0

    .line 503
    if-gt v0, p2, :cond_0

    .line 504
    const-string v1, "Glide"

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    iget v4, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x34

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Load failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " with size ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 506
    const-string v0, "Glide"

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    .line 510
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 511
    sget v0, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 513
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListener$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKJ5E5QMASRK9HKN6T35DPIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListener$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKJ5E5QMASRK9HKN6T35DPIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 514
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    .line 513
    invoke-interface {v0}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onLoadFailed$51666RRD5TH7ARBGEHIM6Q1FCTM6IP355TM6UOB45TIMSPR9DPIIUHRCD5I6AHBOCDIN0T39DTN3MJ3AC5R62BRCC5N6EBQFC9L6AORK7D666RRD5TH7ARBGEHIM6Q1FCTM6IP355TP6ASBLCLPN8BRKC5P6EPBK5TA62SJ7CLQ3MMH9B8______()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5349
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5353
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5354
    :goto_0
    if-nez v0, :cond_2

    .line 5355
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5357
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 517
    :cond_3
    return-void

    .line 6314
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 6315
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 6316
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    if-lez v0, :cond_5

    .line 6317
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 6320
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private final releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 286
    return-void
.end method


# virtual methods
.method public final begin()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 200
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    .line 201
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 202
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    .line 204
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 209
    :goto_0
    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 227
    :cond_1
    :goto_1
    return-void

    .line 208
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 213
    :cond_3
    sget v0, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 214
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->onSizeReady(II)V

    .line 220
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-ne v0, v1, :cond_5

    .line 221
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_5
    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "finished run method in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    goto :goto_2
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 257
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-ne v0, v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 1239
    sget v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CANCELLED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 1240
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    .line 1242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_3
    sget v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    goto :goto_0
.end method

.method public final getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CANCELLED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isComplete()Z
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isResourceSet()Z
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 498
    return-void
.end method

.method public final onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    .line 431
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 433
    if-nez p1, :cond_1

    .line 434
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x52

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 1497
    invoke-direct {p0, v0, v9}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 442
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 443
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_4

    .line 447
    const-string v0, ""

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Expected to receive an object of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but instead got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "} inside Resource{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 2497
    invoke-direct {p0, v2, v9}, Lcom/bumptech/glide/request/SingleRequest;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;I)V

    goto/16 :goto_0

    .line 445
    :cond_3
    const-string v0, ""

    goto/16 :goto_1

    .line 447
    :cond_4
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 3408
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 453
    :goto_3
    if-nez v0, :cond_8

    .line 454
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 456
    sget v0, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    goto/16 :goto_0

    .line 3408
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 3472
    :cond_8
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v0

    .line 3473
    sget v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v2, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 3474
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 3476
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v2}, Lcom/bumptech/glide/GlideContext;->getLogLevel()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_9

    .line 3477
    const-string v2, "Glide"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    iget v7, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    iget-wide v8, p0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    .line 3479
    invoke-static {v8, v9}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x5f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Finished loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " from "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3477
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_9
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListener$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKJ5E5QMASRK9HKN6T35DPIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListener$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKJ5E5QMASRK9HKN6T35DPIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 3483
    invoke-interface {v2}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onResourceReady$5166KOBMC4NMOOBECSNKUOJACLHN8EQCD9GNCO9FDHGMSPPF9TH6KPB3EGTKOORFDKNM4TBDE1Q6AOR85TJMOQB4CKNN4PBHELIN6T1FEHGN4PR5EGNL8OBICTIN8EQCCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRCDTGM8BQ4C5Q62KRFELP66P9RB8KLK___()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3484
    :cond_a
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 3485
    invoke-interface {v2, p2, v0}, Lcom/bumptech/glide/request/transition/TransitionFactory;->build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object v0

    .line 3486
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v2, v1, v0}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 4420
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 4421
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    goto/16 :goto_0
.end method

.method public final onSizeReady(II)V
    .locals 19

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 366
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Got onSizeReady in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    sget v3, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    if-eq v2, v3, :cond_2

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    sget v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->getSizeMultiplier()F

    move-result v2

    .line 375
    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    .line 376
    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    .line 378
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "finished setup for calling load in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 381
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 384
    invoke-virtual {v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->getSignature()Lcom/bumptech/glide/load/Key;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 387
    invoke-virtual {v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->getResourceClass()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/request/SingleRequest;->priority:Lcom/bumptech/glide/Priority;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 390
    invoke-virtual {v11}, Lcom/bumptech/glide/request/BaseRequestOptions;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 391
    invoke-virtual {v12}, Lcom/bumptech/glide/request/BaseRequestOptions;->getTransformations()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 392
    invoke-virtual {v13}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 393
    invoke-virtual {v14}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 394
    invoke-virtual {v15}, Lcom/bumptech/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    move-object/from16 v16, v0

    .line 395
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/request/BaseRequestOptions;->getUseUnlimitedSourceGeneratorsPool()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    move-object/from16 v17, v0

    .line 396
    invoke-virtual/range {v17 .. v17}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOnlyRetrieveFromCache()Z

    move-result v17

    move-object/from16 v18, p0

    .line 381
    invoke-virtual/range {v2 .. v18}, Lcom/bumptech/glide/load/engine/Engine;->load(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZLcom/bumptech/glide/load/Options;ZZZLcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 398
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/bumptech/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "finished onSizeReady in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->clear()V

    .line 280
    sget v0, Lcom/bumptech/glide/request/SingleRequest$Status;->PAUSED$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->status$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKR9DPJMOPAICLONAPBJEGI56T31EHQN6EO_:I

    .line 281
    return-void
.end method

.method public final recycle()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 179
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 180
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 181
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestOptions:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 182
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideWidth:I

    .line 183
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->overrideHeight:I

    .line 184
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 185
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestListener$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FE9IN2TB5EDQ2UKJ5E5QMASRK9HKN6T35DPIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 186
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 187
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->animationFactory:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 188
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 189
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->width:I

    .line 193
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->height:I

    .line 194
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->POOL:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method
