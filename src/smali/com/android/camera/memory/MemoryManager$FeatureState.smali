.class final Lcom/android/camera/memory/MemoryManager$FeatureState;
.super Ljava/lang/Object;
.source "MemoryManager.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/memory/MemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureState"
.end annotation


# instance fields
.field private callbackCloseables:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/SafeCloseable;",
            ">;"
        }
    .end annotation
.end field

.field final memoryUsage:Lcom/android/camera/memory/FeatureMemoryUsage;

.field final ready:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/memory/FeatureMemoryUsage;Lcom/google/android/apps/camera/async/ConcurrentState;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/memory/FeatureMemoryUsage;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/SafeCloseable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/memory/MemoryManager$FeatureState;->memoryUsage:Lcom/android/camera/memory/FeatureMemoryUsage;

    .line 40
    iput-object p2, p0, Lcom/android/camera/memory/MemoryManager$FeatureState;->ready:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 41
    iput-object p3, p0, Lcom/android/camera/memory/MemoryManager$FeatureState;->callbackCloseables:Ljava/util/Collection;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/memory/FeatureMemoryUsage;Lcom/google/android/apps/camera/async/ConcurrentState;Ljava/util/Collection;B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/memory/MemoryManager$FeatureState;-><init>(Lcom/android/camera/memory/FeatureMemoryUsage;Lcom/google/android/apps/camera/async/ConcurrentState;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/memory/MemoryManager$FeatureState;->callbackCloseables:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 47
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
