.class final Lcom/android/camera/stats/OneCameraSession$1;
.super Ljava/lang/Object;
.source "OneCameraSession.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/OneCameraSession;->provider()Ljavax/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/android/camera/stats/OneCameraSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/OneCameraSession;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/android/camera/stats/OneCameraSession;

    new-instance v1, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v1}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/camera/stats/OneCameraSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/android/camera/stats/OneCameraSession$1;->get()Lcom/android/camera/stats/OneCameraSession;

    move-result-object v0

    return-object v0
.end method
