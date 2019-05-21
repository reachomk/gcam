.class public final Lcom/google/android/gms/location/LocationSettingsStates;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzbiu:Z

.field private final zzbiv:Z

.field private final zzbiw:Z

.field private final zzbix:Z

.field private final zzbiy:Z

.field private final zzbiz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiu:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiv:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiw:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbix:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiy:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiz:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzbe(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    .line 2000
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiu:Z

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    .line 3000
    iget v2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    .line 4000
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiv:Z

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    .line 5000
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiw:Z

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    .line 6000
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbix:Z

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    .line 7000
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiy:Z

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    .line 8000
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbiz:Z

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzJ(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
