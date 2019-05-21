.class Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "ResponseListeners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/one/v2/core/ResponseListener;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;->delegate:Lcom/google/android/apps/camera/async/Updatable;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/async/Updatable;B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;-><init>(Lcom/google/android/apps/camera/async/Updatable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;->delegate:Lcom/google/android/apps/camera/async/Updatable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;->delegate:Lcom/google/android/apps/camera/async/Updatable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
