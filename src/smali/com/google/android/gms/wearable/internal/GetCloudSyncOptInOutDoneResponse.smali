.class public Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final statusCode:I

.field public final versionCode:I

.field public final zzcor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzal;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->statusCode:I

    iput-boolean p3, p0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->zzcor:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzbe(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->versionCode:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->statusCode:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->zzcor:Z

    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzJ(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
