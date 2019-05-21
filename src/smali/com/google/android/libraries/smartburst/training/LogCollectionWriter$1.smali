.class final Lcom/google/android/libraries/smartburst/training/LogCollectionWriter$1;
.super Ljava/lang/Object;
.source "LogCollectionWriter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/training/LogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$stringWriter:Ljava/io/StringWriter;


# direct methods
.method constructor <init>(Ljava/io/StringWriter;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter$1;->val$stringWriter:Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeLog(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter$1;->val$stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    return-void
.end method
