.class public Lcom/google/android/gms/wearable/internal/NodeParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/NodeParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzVA:Ljava/lang/String;

.field private final zzcoL:I

.field private final zzcoM:Z

.field private final zzyU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbc;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbc;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzyU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzVA:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzcoL:I

    iput-boolean p5, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzcoM:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/wearable/internal/NodeParcelable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/wearable/internal/NodeParcelable;

    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzyU:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzyU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzyU:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzVA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzyU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzcoL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNearby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzcoM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget v2, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->mVersionCode:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    .line 2000
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzyU:Ljava/lang/String;

    .line 1000
    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 3000
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzVA:Ljava/lang/String;

    .line 1000
    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    .line 4000
    iget v2, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzcoL:I

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    .line 5000
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->zzcoM:Z

    .line 1000
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->zzJ(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
