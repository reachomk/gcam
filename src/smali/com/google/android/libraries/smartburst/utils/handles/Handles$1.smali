.class final Lcom/google/android/libraries/smartburst/utils/handles/Handles$1;
.super Ljava/lang/Object;
.source "Handles.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic val$handle:Lcom/google/android/libraries/smartburst/utils/handles/Handle;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/utils/handles/Handles$1;->val$handle:Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/Handles$1;->val$handle:Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handle;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "SafeHandle"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Handle threw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final detach()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/Handles$1;->val$handle:Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handle;->detach()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/Handles$1;->val$handle:Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handle;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
