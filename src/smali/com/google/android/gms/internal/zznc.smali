.class public final Lcom/google/android/gms/internal/zznc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/ClearcutLoggerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zznc$zze;,
        Lcom/google/android/gms/internal/zznc$zzd;,
        Lcom/google/android/gms/internal/zznc$zza;,
        Lcom/google/android/gms/internal/zznc$zzc;
    }
.end annotation


# static fields
.field private static final zzapp:Lcom/google/android/gms/internal/zznc$zze;

.field private static final zzapq:J


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzaps:Ljava/lang/Object;

.field private zzapt:J

.field private final zzrA:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zznc$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zznc$zze;-><init>(B)V

    sput-object v0, Lcom/google/android/gms/internal/zznc;->zzapp:Lcom/google/android/gms/internal/zznc$zze;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zznc;->zzapq:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/util/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zzg;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/zznc;->zzapq:J

    new-instance v1, Lcom/google/android/gms/internal/zznc$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zznc$zza;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zznc;-><init>(Lcom/google/android/gms/common/util/Clock;JLcom/google/android/gms/internal/zznc$zza;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/util/Clock;JLcom/google/android/gms/internal/zznc$zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzaps:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznc;->zzapt:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznc;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zznc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznc$1;-><init>(Lcom/google/android/gms/internal/zznc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc;->zzrA:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zznc;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznc;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zznc;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzaps:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->extensionProducer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FCTMN6BR3DHIM2SJ3ELQ2UGRCCLGN4ORLEH66UPR7CLP28JB5EDPM2PR5A1P6UP3LCDIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzaiu$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaiu$zzd;->zzcrI:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzaiu$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->extensionProducer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FCTMN6BR3DHIM2SJ3ELQ2UGRCCLGN4ORLEH66UPR7CLP28JB5EDPM2PR5A1P6UP3LCDIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-interface {v1}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->toProtoBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaiu$zzd;->zzcrI:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->clientVisualElementsProducer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FCTMN6BR3DHIM2SJ3ELQ2UGRCCLGN4ORLEH66UPR7CLP28JB5EDPM2PR5A1P6UP3LCDIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzaiu$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaiu$zzd;->zzcrP:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzaiu$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->clientVisualElementsProducer$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FCTMN6BR3DHIM2SJ3ELQ2UGRCCLGN4ORLEH66UPR7CLP28JB5EDPM2PR5A1P6UP3LCDIN4EO_:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-interface {v1}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->toProtoBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaiu$zzd;->zzcrP:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzaiu$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzain;->toByteArray(Lcom/google/android/gms/internal/zzain;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEventBytes:[B

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zznc;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zznc;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zznc;)Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzrA:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zznc;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic zzoU()Lcom/google/android/gms/internal/zznc$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zznc;->zzapp:Lcom/google/android/gms/internal/zznc$zze;

    return-object v0
.end method


# virtual methods
.method public final logEvent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p2}, Lcom/google/android/gms/internal/zznc;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    .line 1000
    sget-object v0, Lcom/google/android/gms/internal/zznc;->zzapp:Lcom/google/android/gms/internal/zznc$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznc$zze;->increment()V

    new-instance v0, Lcom/google/android/gms/internal/zznc$zzd;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zznc$zzd;-><init>(Lcom/google/android/gms/internal/zznc;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v1, Lcom/google/android/gms/internal/zznc$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznc$6;-><init>(Lcom/google/android/gms/internal/zznc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznc$zzd;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    .line 0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object v0

    return-object v0
.end method
