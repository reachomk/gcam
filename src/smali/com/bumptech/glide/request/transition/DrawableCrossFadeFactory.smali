.class public final Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

.field private final isCrossFadeEnabled:Z

.field private secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

.field private final viewAnimationFactory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/ViewAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/bumptech/glide/request/transition/ViewAnimationFactory;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/ViewAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->viewAnimationFactory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    .line 29
    iput p2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    .line 30
    iput-boolean p3, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    .line 31
    return-void
.end method

.method private final buildTransition(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->viewAnimationFactory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    iget v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    iget-boolean v3, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;-><init>(Lcom/bumptech/glide/request/transition/Transition;IZ)V

    return-object v1
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, v0, :cond_0

    .line 36
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->get()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    if-eqz p2, :cond_2

    .line 1045
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    if-nez v0, :cond_1

    .line 1046
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->buildTransition(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    goto :goto_0

    .line 1052
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    if-nez v0, :cond_3

    .line 1053
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->buildTransition(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 1055
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    goto :goto_0
.end method
