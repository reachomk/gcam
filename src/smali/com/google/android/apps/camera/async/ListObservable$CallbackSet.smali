.class final Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;
.super Ljava/lang/Object;
.source "ListObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/async/ListObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback;
    }
.end annotation


# instance fields
.field private final cachedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final delegate:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private initialized:Z


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/async/ListObservable;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->delegate:Lcom/google/android/apps/camera/async/Updatable;

    .line 51
    iput-object p3, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->executor:Ljava/util/concurrent/Executor;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->cachedValues:Ljava/util/List;

    move v0, v1

    .line 53
    :goto_0
    invoke-static {p1}, Lcom/google/android/apps/camera/async/ListObservable;->access$000(Lcom/google/android/apps/camera/async/ListObservable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->cachedValues:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->initialized:Z

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/async/ListObservable;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;-><init>(Lcom/google/android/apps/camera/async/ListObservable;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->cachedValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->initialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;Z)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->initialized:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;)Lcom/google/android/apps/camera/async/Updatable;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->delegate:Lcom/google/android/apps/camera/async/Updatable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
