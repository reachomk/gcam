.class public final Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private transition:Lcom/bumptech/glide/request/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/Transition",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->get()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->transition:Lcom/bumptech/glide/request/transition/Transition;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewTransition;

    iget-object v1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/transition/ViewTransition;-><init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->transition:Lcom/bumptech/glide/request/transition/Transition;

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->transition:Lcom/bumptech/glide/request/transition/Transition;

    goto :goto_0
.end method
