.class final Lcom/google/android/gms/feedback/Feedback$6;
.super Lcom/google/android/gms/feedback/Feedback$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/feedback/Feedback;->startFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic zzaNV:Lcom/google/android/gms/feedback/FeedbackOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/feedback/Feedback$6;->zzaNV:Lcom/google/android/gms/feedback/FeedbackOptions;

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/Feedback$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzpb;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/feedback/Feedback$6;->zzaNV:Lcom/google/android/gms/feedback/FeedbackOptions;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpb;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaqL:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/feedback/Feedback$6;->zza(Lcom/google/android/gms/common/api/Result;)V

    .line 0
    return-void
.end method
