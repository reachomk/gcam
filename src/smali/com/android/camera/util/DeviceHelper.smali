.class public final Lcom/android/camera/util/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# instance fields
.field private final isNexus5:Z

.field private final isNexus5X:Z

.field private final isNexus6:Z

.field private final isNexus6P:Z

.field private final isNexus9:Z

.field private final isNexus9Lte:Z

.field private final isNexusMarlin:Z

.field private final isNexusSailfish:Z

.field private final isPixelC:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "5wGGjAHgnLFwxJ6i4x0MD3tO0UQ="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexusMarlin:Z

    .line 51
    const-string v0, "XVNDlHWab3AFifoOUlHUvc8KwP8="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexusSailfish:Z

    .line 52
    const-string v0, "S5LBi2iip/ReQ9HGl2PCDqjFf7M="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus6P:Z

    .line 53
    const-string v0, "rlpKeZPMewPQPKeOTLSJgO3ZBfc="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus5X:Z

    .line 54
    const-string v0, "jPvo+6mwbFznHWnmlth4+prs0yQ="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus6:Z

    .line 55
    const-string v0, "UaqINoOSKcO290F9xG7u7sf+PMc="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus9:Z

    .line 56
    const-string v0, "j0UnYdDaznNNjAuddvLjuNuKzsg="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus9Lte:Z

    .line 57
    const-string v0, "VjR4rk+jn2LQPdmHpqE9fNYddbI="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus5:Z

    .line 58
    const-string v0, "uZkLY8Ad+Q4PzonflUUakVDfFvo="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isPixelC:Z

    .line 59
    return-void
.end method


# virtual methods
.method public final isNexus5()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus5:Z

    return v0
.end method

.method public final isNexus5X()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus5X:Z

    return v0
.end method

.method public final isNexus6()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus6:Z

    return v0
.end method

.method public final isNexus6P()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus6P:Z

    return v0
.end method

.method public final isNexus9()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus9:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexus9Lte:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNexusMarlin()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexusMarlin:Z

    return v0
.end method

.method public final isNexusSailfish()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isNexusSailfish:Z

    return v0
.end method

.method public final isPixelC()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/util/DeviceHelper;->isPixelC:Z

    return v0
.end method
