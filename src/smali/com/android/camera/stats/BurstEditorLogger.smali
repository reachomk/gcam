.class public Lcom/android/camera/stats/BurstEditorLogger;
.super Ljava/lang/Object;
.source "BurstEditorLogger.java"


# instance fields
.field private final burstDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/stats/BurstEditorLogger;->burstDirPath:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public logStackFrameDeletion(I)V
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/BurstEditorLogger;->burstDirPath:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 31
    return-void
.end method
