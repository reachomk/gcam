.class public Lcom/google/android/gms/common/internal/ValidateAccountRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ValidateAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzXz:Ljava/lang/String;

.field private final zzaqd:[Lcom/google/android/gms/common/api/Scope;

.field final zzavn:Landroid/os/IBinder;

.field private final zzaxi:I

.field private final zzaxj:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaxi:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzavn:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaqd:[Lcom/google/android/gms/common/api/Scope;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaxj:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzXz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    .line 1000
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzbe(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->mVersionCode:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    .line 2000
    iget v2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaxi:I

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzavn:Landroid/os/IBinder;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    .line 3000
    iget-object v2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaqd:[Lcom/google/android/gms/common/api/Scope;

    .line 1000
    invoke-static {p1, v1, v2, p2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    .line 4000
    iget-object v2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaxj:Landroid/os/Bundle;

    .line 1000
    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x6

    .line 5000
    iget-object v2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzXz:Ljava/lang/String;

    .line 1000
    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzJ(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
