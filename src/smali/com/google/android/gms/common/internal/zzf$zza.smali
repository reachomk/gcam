.class public Lcom/google/android/gms/common/internal/zzf$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final camcorderSnapshotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
            ">;"
        }
    .end annotation
.end field

.field public final camcorderVideoFileOptional:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;"
        }
    .end annotation
.end field

.field public final zzYO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final zzavR:Z


# direct methods
.method public constructor <init>(Lcom/google/common/base/Optional;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    .line 1022
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzf$zza;->camcorderSnapshotList:Ljava/util/List;

    .line 1023
    return-void
.end method
