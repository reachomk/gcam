.class public final Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;
.super Ljava/lang/Object;
.source "Convergence3ASpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;
    }
.end annotation


# instance fields
.field private final exposure:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

.field private final focus:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

.field private final whiteBalance:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->focus:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 92
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->exposure:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 93
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->whiteBalance:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 94
    return-void
.end method

.method public static any()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 1042
    new-instance v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    invoke-direct {v1, v0, v0, v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)V

    .line 35
    return-object v1
.end method

.method public static createWithFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    sget-object v2, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)V

    return-object v0
.end method


# virtual methods
.method public final getExposure()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->exposure:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    return-object v0
.end method

.method public final getFocus()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->focus:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    return-object v0
.end method

.method public final getWhiteBalance()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->whiteBalance:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->exposure:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->focus:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->whiteBalance:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "{ exposure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", focus="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", whiteBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withExposure(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->focus:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->whiteBalance:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)V

    return-object v0
.end method

.method public final withFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->exposure:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->whiteBalance:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)V

    return-object v0
.end method

.method public final withWhiteBalance(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->exposure:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->focus:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)V

    return-object v0
.end method
