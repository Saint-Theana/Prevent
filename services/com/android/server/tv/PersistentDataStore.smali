.class final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/PersistentDataStore$1;
    }
.end annotation


# static fields
.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final TAG_BLOCKED_RATINGS:Ljava/lang/String; = "blocked-ratings"

.field private static final TAG_PARENTAL_CONTROLS:Ljava/lang/String; = "parental-controls"

.field private static final TAG_RATING:Ljava/lang/String; = "rating"

.field private static final TAG_TV_INPUT_MANAGER_STATE:Ljava/lang/String; = "tv-input-manager-state"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mBlockedRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedRatingsChanged:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaded:Z

.field private mParentalControlsEnabled:Z

.field private mParentalControlsEnabledChanged:Z

.field private final mSaveRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/tv/PersistentDataStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->save()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 190
    new-instance v1, Lcom/android/server/tv/PersistentDataStore$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "userDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_48

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_48

    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User dir cannot be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_48
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "tv-input-manager-state.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 86
    return-void
.end method

.method private broadcastChangesIfNeeded()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    if-eqz v0, :cond_16

    .line 223
    iput-boolean v3, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 224
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    .line 225
    const-string/jumbo v2, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    .line 224
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 227
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    if-eqz v0, :cond_2b

    .line 228
    iput-boolean v3, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 221
    :cond_2b
    return-void
.end method

.method private clearState()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 153
    return-void
.end method

.method private load()V
    .registers 7

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V

    .line 163
    :try_start_3
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_22

    move-result-object v2

    .line 170
    .local v2, "is":Ljava/io/InputStream;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 171
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v3}, Lcom/android/server/tv/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1e} :catch_24
    .catchall {:try_start_9 .. :try_end_1e} :catchall_35

    .line 177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_21
    return-void

    .line 164
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_22
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void

    .line 173
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_24
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_25
    const-string/jumbo v4, "TvInputManagerService"

    const-string/jumbo v5, "Failed to load tv input manager persistent store data."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_35

    .line 177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_21

    .line 176
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_35
    move-exception v4

    .line 177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    throw v4
.end method

.method private loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 262
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 263
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rating"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    const-string/jumbo v2, "string"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "ratingString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 266
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 267
    const-string/jumbo v3, "Missing string attribute on rating"

    .line 266
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_2e
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 260
    .end local v1    # "ratingString":Ljava/lang/String;
    :cond_38
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 243
    const-string/jumbo v2, "tv-input-manager-state"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 245
    .local v1, "outerDepth":I
    :cond_a
    :goto_a
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "blocked-ratings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/tv/PersistentDataStore;->loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 248
    :cond_21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "parental-controls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 249
    const-string/jumbo v2, "enabled"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "enabled":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 251
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 252
    const-string/jumbo v3, "Missing enabled attribute on parental-controls"

    .line 251
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    goto :goto_a

    .line 242
    .end local v0    # "enabled":Ljava/lang/String;
    :cond_50
    return-void
.end method

.method private loadIfNeeded()V
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 148
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->load()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    .line 146
    :cond_a
    return-void
.end method

.method private postSave()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method private save()V
    .registers 7

    .prologue
    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_32

    move-result-object v1

    .line 201
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 203
    .local v3, "success":Z
    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 204
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 206
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_3d

    .line 207
    const/4 v3, 0x1

    .line 209
    if-eqz v3, :cond_2c

    .line 210
    :try_start_23
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    .line 197
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_2b
    return-void

    .line 213
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "success":Z
    :cond_2c
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_32

    goto :goto_2b

    .line 216
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_32
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "TvInputManagerService"

    const-string/jumbo v5, "Failed to save tv input manager persistent store data."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 208
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_3d
    move-exception v4

    .line 209
    if-eqz v3, :cond_49

    .line 210
    :try_start_40
    iget-object v5, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    .line 208
    :goto_48
    throw v4

    .line 213
    :cond_49
    iget-object v5, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4e} :catch_32

    goto :goto_48
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 275
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 276
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 277
    const-string/jumbo v2, "tv-input-manager-state"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string/jumbo v2, "blocked-ratings"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v3

    .line 280
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rating$iterator":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvContentRating;

    .line 281
    .local v0, "rating":Landroid/media/tv/TvContentRating;
    const-string/jumbo v2, "rating"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    const-string/jumbo v2, "string"

    invoke-virtual {v0}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v5, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    const-string/jumbo v2, "rating"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_4a

    goto :goto_24

    .line 279
    .end local v0    # "rating":Landroid/media/tv/TvContentRating;
    .end local v1    # "rating$iterator":Ljava/util/Iterator;
    :catchall_4a
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "rating$iterator":Ljava/util/Iterator;
    :cond_4d
    monitor-exit v3

    .line 286
    const-string/jumbo v2, "blocked-ratings"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    const-string/jumbo v2, "parental-controls"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    const-string/jumbo v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    const-string/jumbo v2, "parental-controls"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    const-string/jumbo v2, "tv-input-manager-state"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 274
    return-void
.end method


# virtual methods
.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 130
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 128
    :cond_d
    :goto_d
    return-void

    .line 131
    :cond_e
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 133
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    goto :goto_d
.end method

.method public getBlockedRatings()[Landroid/media/tv/TvContentRating;
    .registers 3

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 125
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/TvContentRating;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/tv/TvContentRating;

    return-object v0
.end method

.method public isParentalControlsEnabled()Z
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 99
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return v0
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .registers 6
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 113
    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v3

    .line 114
    :try_start_6
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "blockedRating$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvContentRating;

    .line 115
    .local v0, "blockedRating":Landroid/media/tv/TvContentRating;
    invoke-virtual {p1, v0}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24

    move-result v2

    if-eqz v2, :cond_c

    .line 116
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "blockedRating":Landroid/media/tv/TvContentRating;
    :cond_21
    monitor-exit v3

    .line 120
    const/4 v2, 0x0

    return v2

    .line 113
    .end local v1    # "blockedRating$iterator":Ljava/util/Iterator;
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 139
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 140
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 142
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    .line 137
    :cond_18
    return-void
.end method

.method public setParentalControlsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 104
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    if-eq v0, p1, :cond_f

    .line 105
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 107
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    .line 102
    :cond_f
    return-void
.end method
