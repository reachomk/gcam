.class public final Lcom/android/camera/data/Location;
.super Ljava/lang/Object;
.source "Location.java"


# static fields
.field public static final UNKNOWN:Lcom/android/camera/data/Location;


# instance fields
.field private final latitude:D

.field private final longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v2, 0x0

    .line 11
    new-instance v0, Lcom/android/camera/data/Location;

    invoke-direct {v0, v4, v5, v4, v5}, Lcom/android/camera/data/Location;-><init>(DD)V

    sput-object v0, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    .line 12
    new-instance v0, Lcom/android/camera/data/Location;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/android/camera/data/Location;-><init>(DD)V

    return-void
.end method

.method private constructor <init>(DD)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/android/camera/data/Location;->latitude:D

    .line 19
    iput-wide p3, p0, Lcom/android/camera/data/Location;->longitude:D

    .line 20
    return-void
.end method

.method public static from(DD)Lcom/android/camera/data/Location;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    .line 84
    :cond_0
    sget-object v0, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    .line 87
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/data/Location;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/data/Location;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    .line 55
    :cond_3
    check-cast p1, Lcom/android/camera/data/Location;

    .line 57
    iget-wide v2, p1, Lcom/android/camera/data/Location;->latitude:D

    iget-wide v4, p0, Lcom/android/camera/data/Location;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_4
    iget-wide v2, p1, Lcom/android/camera/data/Location;->longitude:D

    iget-wide v4, p0, Lcom/android/camera/data/Location;->longitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public final getLocationString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%f, %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/camera/data/Location;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/camera/data/Location;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 71
    iget-wide v0, p0, Lcom/android/camera/data/Location;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 72
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 73
    iget-wide v2, p0, Lcom/android/camera/data/Location;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 75
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    const-string v1, "Location: "

    invoke-virtual {p0}, Lcom/android/camera/data/Location;->getLocationString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
