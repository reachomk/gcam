.class final Lcom/android/camera/stats/CameraActivitySession$1;
.super Ljava/lang/Object;
.source "CameraActivitySession.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/CameraActivitySession;->provider()Ljavax/inject/Provider;
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
        "Lcom/android/camera/stats/CameraActivitySession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/CameraActivitySession;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/stats/CameraActivitySession;

    invoke-static {}, Lcom/android/camera/stats/CameraAppSession;->instance()Lcom/android/camera/stats/CameraAppSession;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v2}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/stats/CameraActivitySession;-><init>(Lcom/android/camera/stats/CameraAppSession;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/camera/stats/CameraActivitySession$1;->get()Lcom/android/camera/stats/CameraActivitySession;

    move-result-object v0

    return-object v0
.end method
