.class final Lcom/google/android/gms/common/zzc$zzbf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzbf"
.end annotation


# static fields
.field static final zzapU:[Lcom/google/android/gms/common/zzc$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/zzc$zza;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/zzc$zzbf$1;

    const-string v3, "0\u0082\u0003\u00cb0\u0082\u0002\u00b3\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0082m\u00ca\u008dP\u00e0\u0008a0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzcr(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzbf$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/zzc$zzbf$2;

    const-string v3, "0\u0082\u0003\u00cb0\u0082\u0002\u00b3\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00a1K\u0098\u00a2\u0092L\u0087\u00ff0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzcr(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzbf$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/zzc$zzbf;->zzapU:[Lcom/google/android/gms/common/zzc$zza;

    return-void
.end method
